import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.judulController,
                  decoration: InputDecoration(hintText: "Masukan judul"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Judul tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penulisController,
                  decoration: InputDecoration(hintText: "Masukan penulis"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Penulis tidak boleh kosong";
                    }
                    return null;
                  },
                ),
    TextFormField(
                  controller: controller.penerbitController,
                  decoration: InputDecoration(hintText: "Masukan penerbit"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Penerbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
    TextFormField(
                  controller: controller.tahunController,
                  decoration: InputDecoration(hintText: "Masukan tahunterbit"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tahunterbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() =>
                controller.LoadingBook.value?
                CircularProgressIndicator():
                ElevatedButton(onPressed: () {
                      controller.addBook();
                    },
                    child: Text("Login")))

              ],
            ),
          )
    );
  }
}
