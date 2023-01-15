import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    TextEditingController skinController = TextEditingController();
  TextEditingController glucoseController = TextEditingController();
   TextEditingController pedigreController = TextEditingController();
  TextEditingController insulineController = TextEditingController();
  TextEditingController bloodController = TextEditingController();
  TextEditingController imcController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Enter your details";

  void _resetFields() {
    skinController.text = "";
    glucoseController.text = "";
    pedigreController.text = "";
 ageController.text = "";
    imcController.text = "";
     bloodController.text = "";
    insulineController.text = "";
    setState(() {
      _infoText = "Enter your details";
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  SingleChildScrollView(
        child: Container(
           height: 1100,
            width: 1500,
         decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
        
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [  
                 
             Row(
                children: [
                 const SizedBox(width: 500),
                Container(
                 child: Image.asset(
                 'assets/img/online-pharmacy.png',
                  fit: BoxFit.contain,
                  height: 200,
              ),
                ),]
                ),
                const SizedBox(height: 10),
                    Row(
                children: [
                 const SizedBox(width: 350),
                Container(
                 child:   Text(
                      " Diabete prediction",
                      style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                      ),
                    ),
                ),]
                ),
                


const SizedBox(height: 10),

                

                Row(children: [
const SizedBox(width: 100),

  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("Blood", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,
 
 
    child:Image.asset('assets/img/blood.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Blood pressure",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
                controller: bloodController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient blood pressure";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 150),


  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
   decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("Pedigre", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,
 
 
    child:Image.asset('assets/img/pedigre.png', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Weight (kg)",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
                controller: pedigreController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient weight";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 150),

  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  Age", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,

    child:Image.asset('assets/img/age.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Age",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
                controller: ageController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient age";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 150),


  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  Glucose", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,

    child:Image.asset('assets/img/glucose.webp', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Glucose",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
                controller: glucoseController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient glucose level";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(height: 50),

            ]),

Row(children: [
  const SizedBox(width: 200),
                    Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  Insuline", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,
 
 
    child:Image.asset('assets/img/insuline.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Insuline level",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
                controller: insulineController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient Insuline level";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   
  const SizedBox(width: 200),

  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  IMC", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,

 
    child:Image.asset('assets/img/imc.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Imc Value",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
                controller: imcController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient Imc";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 200),


                   
                
                             
    Container(
                     height: 300,
                     width: 150,
                     
                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("SkinThickness", style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    Container(
                     height: 150,
                     width: 150,

    child:Image.asset('assets/img/skin.png', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child:
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Thick",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
                controller:skinController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient skin";
                  }
                },
              ),
                   ),
                   ]
                  )
                ),

            ]),




  Row(
                children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                
                child: Container(
                  height: 50.0,
                  child:ElevatedButton(
                    style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding:
                      MaterialStateProperty.all(const EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Colors.white))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        
                      }
                    },
                    child: Text(
                      "Estimate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),                
                  ),
                ),
              ),]
                ),

             const SizedBox(width: 200,),
                Row(
                children: [
                 Text(
                _infoText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),]
                ),
                
             
           
          ])
          ),
        
      ));
  }
}
