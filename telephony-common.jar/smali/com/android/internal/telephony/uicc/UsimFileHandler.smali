.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f4b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f4c

    if-eq p1, v0, :cond_2

    .line 38
    const-string v0, "3F007F105F3A"

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object p0

    .line 94
    :sswitch_0
    const-string p0, "3F007F43"

    return-object p0

    .line 89
    :sswitch_1
    const-string p0, "3F007FFF5F50"

    return-object p0

    .line 101
    :sswitch_2
    const-string p0, "3F007FFF7F665F30"

    return-object p0

    :sswitch_3
    return-object v0

    .line 98
    :sswitch_4
    const-string p0, "3F007FFF5FC0"

    return-object p0

    .line 41
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "3F007F10"

    return-object p0

    .line 81
    :cond_2
    :pswitch_0
    :sswitch_5
    const-string p0, "3F007FFF"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4f08 -> :sswitch_4
        0x4f30 -> :sswitch_3
        0x4f36 -> :sswitch_2
        0x4f84 -> :sswitch_1
        0x6f02 -> :sswitch_0
        0x6f05 -> :sswitch_5
        0x6f11 -> :sswitch_5
        0x6f31 -> :sswitch_5
        0x6f38 -> :sswitch_5
        0x6f46 -> :sswitch_5
        0x6f49 -> :sswitch_5
        0x6f4e -> :sswitch_5
        0x6f7b -> :sswitch_5
        0x6fad -> :sswitch_5
        0x6fcd -> :sswitch_5
        0x6fd9 -> :sswitch_5
        0x6fdc -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6f13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f3e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6f60
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6fc5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 116
    const-string p0, "UsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 121
    const-string p0, "UsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
