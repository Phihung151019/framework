.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f74

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 72
    const-string p0, "3F007F105F3A"

    :cond_0
    return-object p0

    .line 42
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "3F007F10"

    return-object p0

    .line 65
    :pswitch_1
    const-string p0, "3F007F105F3C"

    return-object p0

    .line 59
    :cond_1
    :pswitch_2
    const-string p0, "3F007FFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4f20
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f3a
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 79
    const-string p0, "CsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 84
    const-string p0, "CsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
