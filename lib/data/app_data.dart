import '../models/student.dart';

const List<String> avatarList = [
  'https://i.pravatar.cc/150?img=1',
  'https://i.pravatar.cc/150?img=2',
  'https://i.pravatar.cc/150?img=3',
  'https://i.pravatar.cc/150?img=4',
  'https://i.pravatar.cc/150?img=5',
  'https://i.pravatar.cc/150?img=6',
  'https://i.pravatar.cc/150?img=7',
  'https://i.pravatar.cc/150?img=8',
  'https://i.pravatar.cc/150?img=9',
  'https://i.pravatar.cc/150?img=10',
  'https://i.pravatar.cc/150?img=11',
  'https://i.pravatar.cc/150?img=12',
];

const List<String> domisiliList = [
  'Jakarta Pusat', 'Jakarta Utara', 'Jakarta Selatan',
  'Jakarta Barat', 'Jakarta Timur', 'Tangerang',
  'Tangerang Selatan', 'Bekasi', 'Depok', 'Bogor',
  'Bandung', 'Surabaya', 'Semarang', 'Yogyakarta',
  'Medan', 'Makassar', 'Palembang', 'Denpasar',
  'Malang', 'Lainnya',
];

final List<Student> initialStudentsData = [
  Student(
    name: 'Budi Santoso',
    avatar: 'https://i.pravatar.cc/150?img=1',
    domisili: 'Jakarta Selatan',
    phone: '081234567890',
  ),
  Student(
    name: 'Sari Dewi',
    avatar: 'https://i.pravatar.cc/150?img=5',
    domisili: 'Bekasi',
    phone: '087654321098',
  ),
  Student(
    name: 'Ahmad Fauzi',
    avatar: 'https://i.pravatar.cc/150?img=3',
    domisili: 'Depok',
    phone: '082198765432',
  ),
  Student(
    name: 'Rina Kusuma',
    avatar: 'https://i.pravatar.cc/150?img=8',
    domisili: 'Tangerang Selatan',
    phone: '089876543210',
  ),
  Student(
    name: 'Dian Pratama',
    avatar: 'https://i.pravatar.cc/150?img=11',
    domisili: 'Bogor',
    phone: '085678901234',
  ),
];