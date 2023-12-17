import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: WeatherHomePage()),
    );
  }
}

const darkColor = Color.fromRGBO(36, 40, 70, 1);
var mainSymbolColor = Color.fromRGBO(117, 143, 163, 1.0);

class WeatherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(217, 237, 253, 1.0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              headerInfo(
                'Bugün',
                15,
                FontWeight.bold,
              ),
              headerInfo(
                '1 Ocak 2024',
                17,
                FontWeight.w400,
              ),
              headerInfo(
                'İstanbul',
                14,
                FontWeight.normal,
              ),
              Image.asset(
                'assets/images/weather_cloudy.png',
                width: 600,
                height: 250,
              ),
              Text(
                'Çoğunlukla Bulutlu',
                style: TextStyle(
                  fontSize: 19.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '17 °C',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    otherday('7 °C', 'Salı', Icons.cloud),
                    otherday('5 °C', 'Çarşamba', Icons.sunny),
                    otherday('4 °C', 'Perşembe', Icons.cloud),
                    otherday('2 °C', 'Cuma', Icons.thunderstorm),
                    otherday('-1 °C', 'C.Tesi', Icons.ac_unit),
                    otherday('-2 °C', 'Pazar', Icons.ac_unit),
                    otherday('3 °C', 'Pazartesi', Icons.cloud),
                    otherday('8 °C', 'Salı', Icons.sunny),
                    otherday('6 °C', 'Çarşamba', Icons.cloud),
                    otherday('1 °C', 'Perşembe', Icons.sunny),
                    otherday('0 °C', 'Cuma', Icons.ac_unit),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  childInfo('%22', 'Yağmurlu', Icons.cloud),
                  childInfo('14 km/s', 'Rüzgarlı', Icons.air),
                  childInfo('%31', 'Nem', Icons.water_drop),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              menu(mainSymbolColor: mainSymbolColor, darkColor: darkColor),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      backgroundColor: Color.fromRGBO(217, 237, 253, 1.0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Image.asset(
                'assets/images/loginlock.png',
                height: 150,
              ),
              SizedBox(height: 20.0),
              Text(
                'Merhaba, Giriş Yapın!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherHomePage()),
                  );
                },
                child: Text('Giriş Yap'),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  'Hesabım Yok, Hemen Oluştur!',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: Text(
                  'Şifremi Unuttum',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Oluştur'),
      ),
      backgroundColor: Color.fromRGBO(217, 237, 253, 1.0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Image.asset(
                'assets/images/loginlock.png',
                height: 150,
              ),
              SizedBox(height: 20.0),
              Text(
                'Hesap Oluştur',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherHomePage()),
                  );
                },
                child: Text('Hesap Oluştur'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class menu extends StatelessWidget {
  const menu({
    super.key,
    required this.mainSymbolColor,
    required this.darkColor,
  });

  final Color mainSymbolColor;
  final Color darkColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainSymbolColor,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.login,
                  size: 35.0,
                  color: darkColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WeatherHomePage()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Icon(
                      Icons.location_on,
                      size: 55.0,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: darkColor,
                      boxShadow: [
                        BoxShadow(
                          color: darkColor.withOpacity(0.6),
                          spreadRadius: 2.0,
                          blurRadius: 5.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  size: 35.0,
                  color: darkColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Text headerInfo(String text, double fontsize, FontWeight fw) {
  return Text(
    text,
    style: TextStyle(fontWeight: fw, fontSize: fontsize, fontFamily: 'Poppins'),
  );
}

Column childInfo(String value, String info, IconData icons) {
  return Column(
    children: <Widget>[
      Icon(
        icons,
        size: 48.0,
        color: Color.fromRGBO(96, 119, 137, 1.0),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        info,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: 'Poppins',
        ),
      ),
    ],
  );
}

Column otherday(String value, String info, IconData icons) {
  return Column(
    children: <Widget>[
      Icon(
        icons,
        size: 30.0,
        color: Color.fromRGBO(96, 119, 137, 1.0),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 10.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        info,
        style: TextStyle(
          fontSize: 10.0,
          fontFamily: 'Poppins',
        ),
      ),
      SizedBox(
        width: 100,
      ),
    ],
  );
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şifremi Unuttum'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Image.asset(
                'assets/images/loginlock.png',
                height: 150,
              ),
              SizedBox(height: 20.0),
              Text(
                'Şifremi Unuttum',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                'Lütfen kullanıcı adınızı girerek şifrenizi sıfırlayın.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adınız',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherHomePage()),
                  );
                },
                child: Text('Şifre Sıfırla'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text('Bildirim Durumu'),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.white,
                activeColor: Colors.white60,
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/user_avatar.jpeg'),
              ),
              SizedBox(height: 0.0),
              Text(
                'admin',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherHomePage()),
                  );
                },
                child: Text('Adreslerim'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Çıkış Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
