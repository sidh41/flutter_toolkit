// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../Design_System/constants.dart';

class Style1List extends StatelessWidget {
  const Style1List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
    );
  }
}

class Style2List extends StatelessWidget {
  const Style2List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CachedNetworkImage(
            imageUrl:
                'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/40x40',
            httpHeaders: {'Access-Control-Allow-Origin': '*'},
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          title: Text('Item $index'),
          subtitle: Text('Subtitle $index'),
        );
      },
    );
  }
}

class Style3List extends StatelessWidget {
  const Style3List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                color: mediumColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl:
                    'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/40x40',
                httpHeaders: {'Access-Control-Allow-Origin': '*'},
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              title: Text('Item $index'),
              subtitle: Text('Subtitle $index'),
            ),
          ),
        );
      },
    );
  }
}

class Style4List extends StatelessWidget {
  const Style4List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                color: mediumColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 72.0,
                  width: 54.0,
                  decoration: BoxDecoration(color: darkColor),
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/50x50',
                        headers: {'Access-Control-Allow-Origin': '*'},
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 0.0),
                Expanded(
                  child: ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Style5List extends StatelessWidget {
  const Style5List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                color: mediumColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 72.0,
                  width: 54.0,
                  decoration: BoxDecoration(color: primaryColor),
                  child: Center(
                    child: Text(
                      // Use string interpolation to compose the string.
                      '$index',
                      style: h1Style.copyWith(color: whiteColor),
                    ),
                  ),
                ),
                SizedBox(width: 0.0),
                Expanded(
                  child: ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Style6List extends StatelessWidget {
  const Style6List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                  httpHeaders: {'Access-Control-Allow-Origin': '*'},
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Item $index'),
                  subtitle: Text('Subtitle $index'),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.zero,
          child: Divider(
            color: mediumColor,
            indent: 65.0,
            height: 0.0,
          ),
        );
      },
    );
  }
}

class Style7List extends StatefulWidget {
  const Style7List({Key? key}) : super(key: key);

  @override
  _Style7ListState createState() => _Style7ListState();
}

class _Style7ListState extends State<Style7List> {
  int? selectedItem;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedItem = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                    httpHeaders: {'Access-Control-Allow-Origin': '*'},
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    trailing: Theme(
                      data: ThemeData(unselectedWidgetColor: primaryColor),
                      child: Radio<int>(
                        value: index,
                        groupValue: selectedItem,
                        onChanged: (int? value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.zero,
          child: Divider(
            color: mediumColor,
            indent: 65.0,
            height: 0.0,
          ),
        );
      },
    );
  }
}

class Style8List extends StatefulWidget {
  const Style8List({Key? key}) : super(key: key);

  @override
  _Style8ListState createState() => _Style8ListState();
}

class _Style8ListState extends State<Style8List> {
  List<bool> isCheckedList =
      List.filled(3, false); // Initialize isCheckedList with false values

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isCheckedList[index] = !isCheckedList[index];
            });
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                    httpHeaders: {'Access-Control-Allow-Origin': '*'},
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    trailing: Theme(
                      data: ThemeData(unselectedWidgetColor: primaryColor),
                      child: Checkbox(
                        value: isCheckedList[index],
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckedList[index] = value ?? false;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.zero,
          child: Divider(
            color: mediumColor,
            indent: 65.0,
            height: 0.0,
          ),
        );
      },
    );
  }
}

class Style9List extends StatelessWidget {
  const Style9List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Card(
            elevation: 2, // Add elevation for a card effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(12.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                  httpHeaders: {'Access-Control-Allow-Origin': '*'},
                  width: 48, // Set a fixed width for the image
                  height: 48, // Set a fixed height for the image
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              title: Text('Item $index'),
              subtitle: Text('Subtitle $index'),
              trailing: Icon(Icons.arrow_forward), // Add a trailing icon
              onTap: () {
                // Handle onTap action here
              },
            ),
          ),
        );
      },
    );
  }
}

class Style10List extends StatelessWidget {
  const Style10List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
          child: Card(
            elevation: 3,
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                  httpHeaders: {'Access-Control-Allow-Origin': '*'},
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              title: Text('User $index'),
              subtitle: Text('Subtitle $index'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {
                      // Implement like action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      // Implement comment action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // Implement share action
                    },
                  ),
                ],
              ),
              onTap: () {
                // Implement navigation to user profile
              },
            ),
          ),
        );
      },
    );
  }
}

class Style11List extends StatelessWidget {
  const Style11List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: CachedNetworkImage(
                imageUrl:
                    'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                httpHeaders: {'Access-Control-Allow-Origin': '*'},
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            title: Text('User $index'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Subtitle $index'),
                Text('Additional details go here'),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Implement favorite action
              },
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.grey,
          indent: 65.0,
          height: 8.0,
        );
      },
    );
  }
}

class Style12List extends StatefulWidget {
  const Style12List({Key? key}) : super(key: key);

  @override
  _Style12ListState createState() => _Style12ListState();
}

class _Style12ListState extends State<Style12List> {
  List<String> items = ['Item 0', 'Item 1', 'Item 2'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item),
          background: Container(
            color: dangerColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.delete,
                    color: whiteColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Deleted: $item'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    setState(() {
                      items.insert(index, item);
                    });
                  },
                ),
              ),
            );
          },
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: CachedNetworkImage(
                imageUrl:
                    'https://cors-anywhere.herokuapp.com/https://i.pravatar.cc/40?u=$index',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            title: Text(item),
            subtitle: Text('Subtitle $index'),
          ),
        );
      },
    );
  }
}

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Scrollable(
        viewportBuilder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Style1List(),
                const Divider(thickness: 2, height: 30),
                Style2List(),
                const Divider(thickness: 2, height: 30),
                Style3List(),
                const Divider(thickness: 2, height: 30),
                Style4List(),
                const Divider(thickness: 2, height: 30),
                Style5List(),
                const Divider(thickness: 2, height: 30),
                Style6List(),
                const Divider(thickness: 2, height: 30),
                Style7List(),
                const Divider(thickness: 2, height: 30),
                Style8List(),
                const Divider(thickness: 2, height: 30),
                Style9List(),
                const Divider(thickness: 2, height: 30),
                Style10List(),
                const Divider(thickness: 2, height: 30),
                Style11List(),
                const Divider(thickness: 2, height: 30),
                Style12List(),
                const Divider(thickness: 2, height: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}
