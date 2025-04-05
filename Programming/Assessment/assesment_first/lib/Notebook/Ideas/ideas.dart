import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Ideas extends StatefulWidget {
  const Ideas({super.key});

  @override
  State<Ideas> createState() => _IdeasState();
}

class _IdeasState extends State<Ideas> {
  final TextEditingController ideaController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  final CollectionReference ideasCollection =
  FirebaseFirestore.instance.collection('ideas');

  void addIdea() {
    final idea = ideaController.text.trim();
    final category = categoryController.text.trim();

    if (idea.isNotEmpty) {
      ideasCollection.add({
        'idea': idea,
        'category': category,
      });
      ideaController.clear();
      categoryController.clear();
    }
  }

  void updateIdea(String id, String idea, String category) {
    ideasCollection.doc(id).update({
      'idea': idea,
      'category': category,
    });
  }

  void deleteIdea(String id) {
    ideasCollection.doc(id).delete();
  }

  void showEditDialog(String id, String oldIdea, String oldCategory) {
    ideaController.text = oldIdea;
    categoryController.text = oldCategory;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple.shade300,
          title: Text('Edit Idea', style: TextStyle(color: Colors.white)),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: ideaController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Idea',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                TextField(
                  controller: categoryController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Category',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton.icon(
              onPressed: () {
                final newIdea = ideaController.text.trim();
                final newCategory = categoryController.text.trim();
                if (newIdea.isNotEmpty) {
                  updateIdea(id, newIdea, newCategory);
                  Navigator.pop(context);
                }
              },
              icon: Icon(Icons.save),
              label: Text('Update'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ideas', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: ideaController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lightbulb),
                    labelText: 'Enter your idea...',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: categoryController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.category),
                    labelText: 'Category',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 18),
                Center(
                  child: ElevatedButton(
                    onPressed: addIdea,
                    child: Text('Add data', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: ideasCollection.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                final docs = snapshot.data?.docs ?? [];

                if (docs.isEmpty) {
                  return Center(child: Text("No ideas added yet."));
                }

                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final doc = docs[index];
                    final data = doc.data() as Map<String, dynamic>;

                    return Card(
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurple.shade100,
                      child: ListTile(
                        title: Text(
                          data['idea'] ?? '',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: (data['category'] ?? '').toString().isNotEmpty
                            ? Text('Category: ${data['category']}')
                            : null,
                        trailing: Wrap(
                          spacing: 4,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.deepPurple.shade600),
                              onPressed: () => showEditDialog(
                                doc.id,
                                data['idea'] ?? '',
                                data['category'] ?? '',
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.deepPurple.shade600),
                              onPressed: () => deleteIdea(doc.id),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
