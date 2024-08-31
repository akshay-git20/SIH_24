class StatesAndCiti {
   static  List<String> states = [
  'Select State',
  'Andhra Pradesh',
  'Arunachal Pradesh',
  'Assam',
  'Bihar',
  'Chhattisgarh',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Madhya Pradesh',
  'Maharashtra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
  'West Bengal',
];

  static Map<String, List<String>> cities = {
  'Select State': ['Select City'],
  'Andhra Pradesh': [
    'Select City',
    'Guntur',
    'Kurnool',
    'Nellore',
    'Vijayawada',
    'Visakhapatnam',
    // Add more cities for Andhra Pradesh
  ],
  'Arunachal Pradesh': [
    'Select City',
    'Bomdila',
    'Itanagar',
    'Naharlagun',
    'Tawang',
    // Add more cities for Arunachal Pradesh
  ],
  'Assam': [
    'Select City',
    'Dibrugarh',
    'Guwahati',
    'Jorhat',
    'Silchar',
    'Tezpur',
    // Add more cities for Assam
  ],
  'Bihar': [
    'Select City',
    'Bhagalpur',
    'Gaya',
    'Muzaffarpur',
    'Patna',
    'Purnia',
    // Add more cities for Bihar
  ],
  'Chhattisgarh': [
    'Select City',
    'Bhilai',
    'Bilaspur',
    'Korba',
    'Raigarh',
    'Raipur',
    // Add more cities for Chhattisgarh
  ],
  'Goa': [
    'Select City',
    'Margao',
    'Mapusa',
    'Panaji',
    'Ponda',
    'Vasco da Gama',
    // Add more cities for Goa
  ],
  'Gujarat': [
    'Select City',
    'Ahmedabad',
    'Bhavnagar',
    'Rajkot',
    'Surat',
    'Vadodara',
    // Add more cities for Gujarat
  ],
  'Haryana': [
    'Select City',
    'Chandigarh',
    'Faridabad',
    'Gurugram',
    'Hisar',
    'Panipat',
    // Add more cities for Haryana
  ],
  'Himachal Pradesh': [
    'Select City',
    'Dharamshala',
    'Kullu',
    'Mandi',
    'Shimla',
    'Solan',
    // Add more cities for Himachal Pradesh
  ],
  'Jharkhand': [
    'Select City',
    'Bokaro Steel City',
    'Dhanbad',
    'Hazaribagh',
    'Jamshedpur',
    'Ranchi',
    // Add more cities for Jharkhand
  ],
  'Karnataka': [
    'Select City',
    'Belagavi',
    'Bengaluru',
    'Hubballi-Dharwad',
    'Mangaluru',
    'Mysuru',
    // Add more cities for Karnataka
  ],
  'Kerala': [
    'Select City',
    'Kochi',
    'Kollam',
    'Kozhikode',
    'Thiruvananthapuram',
    'Thrissur',
    // Add more cities for Kerala
  ],
  'Madhya Pradesh': [
    'Select City',
    'Bhopal',
    'Gwalior',
    'Indore',
    'Jabalpur',
    'Ujjain',
    // Add more cities for Madhya Pradesh
  ],
  'Maharashtra': [
    'Select City',
    'Aurangabad',
    'Mumbai',
    'Nagpur',
    'Nashik',
    'Pune',
    // Add more cities for Maharashtra
  ],
  'Manipur': [
    'Select City',
    'Bishnupur',
    'Churachandpur',
    'Imphal',
    'Senapati',
    'Thoubal',
    // Add more cities for Manipur
  ],
  'Meghalaya': [
    'Select City',
    'Baghmara',
    'Jowai',
    'Nongpoh',
    'Shillong',
    'Tura',
    // Add more cities for Meghalaya
  ],
  'Mizoram': [
    'Select City',
    'Aizawl',
    'Champhai',
    'Lunglei',
    'Saiha',
    'Serchhip',
    // Add more cities for Mizoram
  ],
  'Nagaland': [
    'Select City',
    'Dimapur',
    'Kohima',
    'Mokokchung',
    'Tuensang',
    'Wokha',
    // Add more cities for Nagaland
  ],
  'Odisha': [
    'Select City',
    'Berhampur',
    'Bhubaneswar',
    'Cuttack',
    'Rourkela',
    'Sambalpur',
    // Add more cities for Odisha
  ],
  'Punjab': [
    'Select City',
    'Amritsar',
    'Chandigarh',
    'Jalandhar',
    'Ludhiana',
    'Patiala',
    // Add more cities for Punjab
  ],
  'Rajasthan': [
    'Select City',
    'Bikaner',
    'Jaipur',
    'Jodhpur',
    'Kota',
    'Udaipur',
    // Add more cities for Rajasthan
  ],
  'Sikkim': [
    'Select City',
    'Gangtok',
    'Jorethang',
    'Mangan',
    'Namchi',
    'Ravangla',
    // Add more cities for Sikkim
  ],
  'Tamil Nadu': [
    'Select City',
    'Chennai',
    'Coimbatore',
    'Madurai',
    'Salem',
    'Tiruchirappalli',
    // Add more cities for Tamil Nadu
  ],
  'Telangana': [
    'Select City',
    'Hyderabad',
    'Karimnagar',
    'Khammam',
    'Nizamabad',
    'Warangal',
    // Add more cities for Telangana
  ],
  'Tripura': [
    'Select City',
    'Agartala',
    'Belonia',
    'Dharmanagar',
    'Kailasahar',
    'Udaipur',
    // Add more cities for Tripura
  ],
  'Uttar Pradesh': [
    'Select City',
    'Agra',
    'Kanpur',
    'Lucknow',
    'Prayagraj',
    'Varanasi',
    // Add more cities for Uttar Pradesh
  ],
  'Uttarakhand': [
    'Select City',
    'Dehradun',
    'Haridwar',
    'Haldwani',
    'Kashipur',
    'Roorkee',
    // Add more cities for Uttarakhand
  ],
  'West Bengal': [
    'Select City',
    'Asansol',
    'Bardhaman',
    'Durgapur',
    'Kolkata',
    'Siliguri',
    // Add more cities for West Bengal
  ],
};

}