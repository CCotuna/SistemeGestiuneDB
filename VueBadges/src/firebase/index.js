import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";
import { getStorage } from "firebase/storage";
import { ref } from "vue";

const firebaseConfig = {
  apiKey: "AIzaSyDCRcKa-hIlxQznRMCtqh2vo-Ei3glT77Y",
  authDomain: "exportpdf-2ccbd.firebaseapp.com",
  projectId: "exportpdf-2ccbd",
  storageBucket: "exportpdf-2ccbd.appspot.com",
  messagingSenderId: "1056364340888",
  appId: "1:1056364340888:web:1e8da24d524c52e7ea12ed",
  measurementId: "G-WKF0TTCT85",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const storage = getStorage(app);
const storageRef = ref(storage);

console.log("storageRef:", storageRef);

const db = getFirestore(app);

export { db, storageRef };
