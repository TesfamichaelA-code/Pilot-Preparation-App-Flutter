import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../resources/domain/entities/create_resource_request.dart';
import 'admin_resource_preview_page.dart';

class AdminResourceAddPage extends ConsumerStatefulWidget {
  const AdminResourceAddPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminResourceAddPage> createState() => _AdminResourceAddPageState();
}

class _AdminResourceAddPageState extends ConsumerState<AdminResourceAddPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _authorController = TextEditingController();
  final _tagsController = TextEditingController();
  final _externalUrlController = TextEditingController();
  String _selectedType = 'video';
  String _selectedCategory = 'flightTheory';
  bool _isActive = true;
  List<CreateResourceRequest> _resources = [];
  int? _editingIndex;

  // URL validation regex patterns
  final _urlPattern = RegExp(
    r'^(https?:\/\/)[^\s/$.?#].[^\s]* $',
    caseSensitive: false,
  );

  final _imageUrlPattern = RegExp(
    r'\.(jpg|jpeg|png|gif|bmp|webp)$',
    
    caseSensitive: false,
  );

  final _videoUrlPattern = RegExp(
    r'\.(mp4|webm|ogg|mov)$',
    caseSensitive: false,
  );

  final _audioUrlPattern = RegExp(
    r'\.(jpg|jpeg|png|gif|bmp|webp)$',
    caseSensitive: false,
  );

  final _documentUrlPattern = RegExp(
    r'\.(pdf|doc|docx|txt|rtf)$',
    caseSensitive: false,
  );

  String? _validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter external URL';
    }
    final uri = Uri.tryParse(value);
    if (uri == null || !(uri.isAbsolute && (uri.scheme == 'http' || uri.scheme == 'https'))) {
      return 'Enter a valid URL';
    }
    return null;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _authorController.dispose();
    _tagsController.dispose();
    _externalUrlController.dispose();
    super.dispose();
  }

  void _addOrSaveResource() {
    if (_formKey.currentState!.validate()) {
      final tags = _tagsController.text.split(',').map((e) => e.trim()).where((e) => e.isNotEmpty).toList();
      setState(() {
        if (_editingIndex == null) {
          _resources.add(
            CreateResourceRequest(
              title: _titleController.text,
              description: _descController.text,
              type: _selectedType,
              category: _selectedCategory,
              author: _authorController.text,
              tags: tags,
              externalUrl: _externalUrlController.text,
              isActive: _isActive,
            ),
          );
        } else {
          _resources[_editingIndex!] = CreateResourceRequest(
            title: _titleController.text,
            description: _descController.text,
            type: _selectedType,
            category: _selectedCategory,
            author: _authorController.text,
            tags: tags,
            externalUrl: _externalUrlController.text,
            isActive: _isActive,
          );
          _editingIndex = null;
        }
        _titleController.clear();
        _descController.clear();
        _authorController.clear();
        _tagsController.clear();
        _externalUrlController.clear();
        _selectedType = 'video';
        _selectedCategory = 'flightTheory';
        _isActive = true;
      });
    }
  }

  void _editResource(int index) {
    final resource = _resources[index];
    setState(() {
      _editingIndex = index;
      _titleController.text = resource.title;
      _descController.text = resource.description;
      _authorController.text = resource.author;
      _tagsController.text = resource.tags.join(', ');
      _externalUrlController.text = resource.externalUrl;
      _selectedType = resource.type;
      _selectedCategory = resource.category;
      _isActive = resource.isActive;
    });
  }

  void _deleteResource(int index) {
    setState(() {
      _resources.removeAt(index);
      if (_editingIndex == index) {
        _editingIndex = null;
        _titleController.clear();
        _descController.clear();
        _authorController.clear();
        _tagsController.clear();
        _externalUrlController.clear();
        _selectedType = 'video';
        _selectedCategory = 'flightTheory';
        _isActive = true;
      } else if (_editingIndex != null && _editingIndex! > index) {
        _editingIndex = _editingIndex! - 1;
      }
    });
  }

  void _goToPreview() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AdminResourcePreviewPage(resources: _resources),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF375569),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          'Add Resource',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: const Color(0xFF46647A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _titleController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Title',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Enter title' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _descController,
                    style: const TextStyle(color: Colors.white),
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Enter description' : null,
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _selectedType,
                    style: const TextStyle(color: Colors.white),
                    dropdownColor: const Color(0xFF375569),
                    decoration: InputDecoration(
                      labelText: 'Type',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'video', child: Text('Video', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'document', child: Text('Document', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'audio', child: Text('Audio', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'link', child: Text('Link', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'image', child: Text('Image', style: TextStyle(color: Colors.white))),
                    ],
                    onChanged: (val) {
                      if (val != null) setState(() => _selectedType = val);
                    },
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _selectedCategory,
                    style: const TextStyle(color: Colors.white),
                    dropdownColor: const Color(0xFF375569),
                    decoration: InputDecoration(
                      labelText: 'Category',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'flightTheory', child: Text('Flight Theory', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'practical', child: Text('Practical', style: TextStyle(color: Colors.white))),
                      DropdownMenuItem(value: 'generalKnowledge', child: Text('General Knowledge', style: TextStyle(color: Colors.white))),
                    ],
                    onChanged: (val) {
                      if (val != null) setState(() => _selectedCategory = val);
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _authorController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Author',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Enter author' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _tagsController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Tags (comma separated)',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _externalUrlController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'External URL',
                      labelStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: const Color(0xFF375569),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: _validateUrl,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Text('Is Active', style: TextStyle(color: Colors.white)),
                      const Spacer(),
                      Switch(
                        value: _isActive,
                        onChanged: (val) => setState(() => _isActive = val),
                        activeColor: Colors.white,
                        activeTrackColor: Colors.purple,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _addOrSaveResource,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF375569),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                          child: Text(_editingIndex == null ? 'Add Resource' : 'Save', style: const TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: _resources.isNotEmpty ? _goToPreview : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF375569),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        ),
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} 