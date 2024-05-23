class Universe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the Universe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, Universe!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        tooltip: 'Explore',
        child: Icon(Icons.explore),
      ),
    );
  }
}