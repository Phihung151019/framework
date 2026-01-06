.class public Lcom/android/internal/telephony/SemCpaiController;
.super Landroid/os/Handler;
.source "SemCpaiController.java"


# static fields
.field private static final blacklist DBG:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPhone:Lcom/android/internal/telephony/SemGsmCdmaPhone;

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/SemCpaiController;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCpaiController;->mPhone:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    .line 36
    iget-object v0, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemCpaiController;->mContext:Landroid/content/Context;

    .line 39
    iget-object p1, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForCpaiModelUpdateNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v0, 0x65

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForCpaiFeatureUpdateNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v0, 0x66

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForCpaiDataGatheringNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v0, 0x67

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForCpaiDevAppMessageNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private static blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForCpaiModelUpdateNotification(Landroid/os/Handler;)V

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForCpaiFeatureUpdateNotification(Landroid/os/Handler;)V

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForCpaiDataGatheringNotification(Landroid/os/Handler;)V

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/SemCpaiController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForCpaiDevAppMessageNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCpaiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportCpai()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string p0, "Not support cpai, skip notification"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, ", "

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 96
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    check-cast p1, [B

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPAI EVENT_DEV_APP_MESSAGE_NOTI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemCpaiController;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/SemCpaiController;->mPhone:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->notifyCpaiDevAppMessage(II[B)V

    return-void

    .line 84
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 85
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, v3

    check-cast p1, [B

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPAI EVENT_DATA_GATHERING_NOTI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemCpaiController;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/SemCpaiController;->mPhone:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->notifyCpaiDataGathering(I[B)V

    return-void

    .line 74
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 75
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 76
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPAI EVENT_FEATURE_INFO_NOTI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/SemCpaiController;->mPhone:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->notifyCpaiFeatureInfo(I)V

    return-void

    .line 65
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 66
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 67
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPAI EVENT_MODEL_UPDATE_NOTI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/SemCpaiController;->mPhone:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->notifyCpaiModelUpdate(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
