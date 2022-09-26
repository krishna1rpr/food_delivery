const menuList = [
  {
    "id": "1",
    "name": "ITEM-1",
    "image": "https://picsum.photos/202",
    "description": "Dolor sit amet Dolor sit amet Dolor sit amet",
    "category": "Indian",
    "rating": "2",
    "price": "333"
  },
  {
    "id": "2",
    "name": "ITEM-2",
    "image": "https://picsum.photos/200",
    "description": "Dolor sit amet Dolor sit amet Dolor sit amet",
    "category": "Italian",
    "rating": "3",
    "price": "123"
  },
  {
    "id": "3",
    "name": "ITEM-3",
    "image": "https://picsum.photos/100",
    "description": "Dolor sit amet Dolor sit amet Dolor sit amet",
    "category": "Indian",
    "rating": "4",
    "price": "44444"
  },
  {
    "id": "4",
    "name": "ITEM-4",
    "image": "https://picsum.photos/110",
    "description": "Dolor sit amet Dolor sit amet Dolor sit amet",
    "category": "Chinese",
    "rating": "5",
    "price": "22"
  },
  {
    "id": "5",
    "name": "ITEM-5",
    "image": "https://picsum.photos/210",
    "description": "Dolor sit amet Dolor sit amet Dolor sit amet",
    "category": "Chinese",
    "rating": "2",
    "price": "9"
  },
];


const categories = [
  "Indian", "Italian", "Chinese"
];

//{
//   "id": 2,
// },
// {
//   "id": 3,
// },
// {
//   "id": 4,
// },
// {
//   "id": 5,
// }


// const menuList = [
//   {
//     "id": 1,
//     "name": "Test 1",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "French",
//     "rating": 3.5
//   },
//   {
//     "id": 2,
//     "name": "Test 2",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Indian",
//     "rating": 3.5
//   },
//   {
//     "id": 3,
//     "name": "Test 3",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Italian",
//     "rating": 3.5
//   },
//   {
//     "id": 4,
//     "name": "Test 4",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Mexican",
//     "rating": 3.5
//   },
//   {
//     "id": 5,
//     "name": "Test 5",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "French",
//     "rating": 3.5
//   },
//   {
//     "id": 6,
//     "name": "Test 6",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "French",
//     "rating": 3.5
//   },
//   {
//     "id": 7,
//     "name": "Test 7",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Indian",
//     "rating": 3.5
//   },
//   {
//     "id": 8,
//     "name": "Test 1",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "French",
//     "rating": 3.5
//   },
//   {
//     "id": 9,
//     "name": "Test 2",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Indian",
//     "rating": 3.5
//   },
//   {
//     "id": 10,
//     "name": "Test 3",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Italian",
//     "rating": 3.5
//   },
//   {
//     "id": 11,
//     "name": "Test 4",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Mexican",
//     "rating": 3.5
//   },
//   {
//     "id": 12,
//     "name": "Test 5",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "French",
//     "rating": 3.5
//   },
//   {
//     "id": 13,
//     "name": "Test 6",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "French",
//     "rating": 3.5
//   },
//   {
//     "id": 14,
//     "name": "Test 7",
//     "price": 42069,
//     "image": "https://picsum.photos/500",
//     "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
//     "category": "Indian",
//     "rating": 3.5
//   }
// ]