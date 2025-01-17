import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_round_container.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_account_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bank_account.dart';
import 'package:fast_app_base/screen/main/tab/home/w_ttoss_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        child: Stack(
          children: [
<<<<<<< HEAD
            RefreshIndicator(
              //새로고침 인디케이터 500밀리초
              edgeOffset: TtossAppBar.appBarHeight,
              onRefresh: () async {
                await sleepAsync(500.milliseconds);
              },
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                    top: TtossAppBar.appBarHeight,
                    bottom: MainScreenState.bottomNavigatorHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigButton(
                      text: '토스뱅크',
                      onTap: () {
                        context.showSnackbar('토스뱅크 눌렸습니다.');
                      },
                    ),
                    RoundedContainer(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "자산".text.bold.white.make(),
                      ],
                    )),
                    ...bankAccounts
                        .map((e) => BankAccountWidget(account: e))
                        .toList(),
                  ],
                ).pSymmetric(h: 10),
              ),
=======
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  BigButton(
                    text: '토스뱅크',
                    onTap: () {
                      context.showSnackbar('토스뱅크 눌렸습니다.');
                    },
                  ),
                  ...bankAccounts //여기 까지 한듯?
                      .map((e) => Text(
                            e.accountTypeName ?? e.bank.name,
                            style: TextStyle(color: Colors.white),
                          ))
                      .toList(),
                ],
              ).pSymmetric(h: 10),
>>>>>>> 37356086f77364f7eb6aad6c34de4cbadcdb85d3
            ),
            const TtossAppBar(),
          ],
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
