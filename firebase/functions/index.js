const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions
  .region("southamerica-east1")
  .auth.user()
  .onDelete(async (user) => {
    let firestore = admin.firestore();
    let userRef = firestore.doc("users/" + user.uid);
    await firestore
      .collectionGroup("lancesenviados")
      .where("usersCliente", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection lancesenviados`,
          );
          await doc.ref.delete();
        }
      });
    await firestore
      .collection("compras-FAVORITOS")
      .where("usersREF", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection compras-FAVORITOS`,
          );
          await doc.ref.delete();
        }
      });
    await firestore
      .collection("compra_AUMENTAR-ALCANCE-1dia")
      .where("usersREF", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection compra_AUMENTAR-ALCANCE-1dia`,
          );
          await doc.ref.delete();
        }
      });
    await firestore
      .collection("compra_AUMENTAR-ALCANCE-5dias")
      .where("usersREF", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection compra_AUMENTAR-ALCANCE-5dias`,
          );
          await doc.ref.delete();
        }
      });
    await firestore
      .collection("compra_AUMENTAR-ALCANCE-15dias")
      .where("usersREF", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection compra_AUMENTAR-ALCANCE-15dias`,
          );
          await doc.ref.delete();
        }
      });
    await firestore
      .collection("DADOS-BANCARIOS_VENDEDORES")
      .where("users", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection DADOS-BANCARIOS_VENDEDORES`,
          );
          await doc.ref.delete();
        }
      });
    await firestore
      .collection("compra_verificado")
      .where("usersREF", "==", userRef)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          console.log(
            `Deleting document ${doc.id} from collection compra_verificado`,
          );
          await doc.ref.delete();
        }
      });
  });
