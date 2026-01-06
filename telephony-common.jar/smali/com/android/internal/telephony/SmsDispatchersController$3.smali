.class Lcom/android/internal/telephony/SmsDispatchersController$3;
.super Landroid/content/BroadcastReceiver;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsDispatchersController;


# direct methods
.method public static synthetic blacklist $r8$lambda$EB3fxeNM0kzfJWb_knZ6v1w8jRE(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .line 3595
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->clearCellBroadcastRangeManager()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3482
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3485
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.ims.dm.DM_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "SmsDispatchersController"

    if-eqz v2, :cond_0

    .line 3486
    const-string v2, "receive ACTION_DM_CHANGED"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v4, "phoneId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_d

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3488
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    const-string v3, "VZW"

    const-string v4, "USCC"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3489
    const-string v2, "item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "DCN_NUMBER"

    .line 3490
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3491
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setDcnAddress(Ljava/lang/String;)V

    return-void

    .line 3493
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.action.SIM_REFRESH_INIT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x1f

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 3494
    const-string v1, "ACTION_SIM_REFRESH_INIT"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1, v6}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fputmSmsc(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V

    .line 3496
    invoke-static {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfputretryGetSmsc(I)V

    .line 3497
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    return-void

    .line 3498
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.LTE_SMS_STATUS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3499
    const-string v2, "ltesms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3500
    iget-object v5, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v5, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fputmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;I)V

    .line 3501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lte sms status is updated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3503
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "com.samsung.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    .line 3504
    const-string v2, "ACTION_CUSTOMER_TEST_RESPONSE"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3506
    const-string v5, "moretosend"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moretosend : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const-string v8, "bypass_ap_cp"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3510
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3511
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_3

    .line 3512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total segment result : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3517
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3521
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc8

    const/16 v11, 0x61

    const/16 v12, 0x11

    if-le v9, v10, :cond_5

    :goto_0
    if-le v9, v10, :cond_4

    .line 3526
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3527
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3529
    invoke-virtual {v14, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3530
    invoke-virtual {v14, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit16 v15, v3, 0xc8

    .line 3532
    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3533
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v10, v16, 0x5

    invoke-virtual {v14, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3534
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {v14, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3536
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    add-int/lit16 v9, v9, -0xc8

    .line 3539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remaining length : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v15

    const/16 v10, 0xc8

    goto :goto_0

    .line 3541
    :cond_4
    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3542
    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/2addr v9, v3

    .line 3543
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last segment : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", len : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3546
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3547
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3548
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    .line 3550
    :cond_5
    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3551
    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3552
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3553
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3554
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3555
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3558
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in CP_BYPASS. total segment result : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3562
    :cond_6
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3563
    const-string v2, "ss"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "LOADED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "phone"

    if-eqz v8, :cond_9

    .line 3564
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SmsDispatchersController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetPHONE_ON_KEY()[Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v8}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    aget-object v6, v6, v8

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CB]  sBootCompleted: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsBootCompleted()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    sget-boolean v6, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v6, :cond_7

    .line 3567
    const-string v1, "SimState is on in watch"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    return-void

    .line 3569
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    const-string v8, "[CB] SimState is on"

    if-le v6, v7, :cond_8

    .line 3570
    iget-object v6, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v6, v1, :cond_d

    if-ne v2, v7, :cond_d

    .line 3572
    invoke-static {v4, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    const-string v1, "[CB] MultiSIM device broadcastCbSettingsAvailable in SIM state-loaded"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 3575
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    return-void

    .line 3579
    :cond_8
    invoke-static {v7}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfputsSimLoaded(Z)V

    if-ne v2, v7, :cond_d

    .line 3581
    invoke-static {v4, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 3583
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3584
    const-string v1, "[CB] SingleSim device broadcastCbSettingsAvailable in SIM state-loaded"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V

    return-void

    .line 3589
    :cond_9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3590
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_d

    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3591
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_not_receive_cmas_without_sim"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3592
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3594
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/SmsDispatchersController$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3596
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 3598
    :cond_a
    const-string v1, "iccSmsInterfaceMgr is null"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    :goto_1
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fputmSmsc(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V

    return-void

    .line 3603
    :cond_b
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3604
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SmsDispatchersController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetPHONE_ON_KEY()[Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v5}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    aget-object v2, v2, v5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3605
    const-string v2, "receive android.intent.action.BOOT_COMPLETED"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    invoke-static {v7}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfputsBootCompleted(Z)V

    .line 3607
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 3608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sSimLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsSimLoaded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v7, :cond_d

    .line 3609
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsSimLoaded()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3610
    const-string v1, "[CB] SimState is on && SIM Loaded"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    const-string v1, "[CB] SingleSim device broadcastCbSettingsAvailable in Booting Completed"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V

    return-void

    .line 3615
    :cond_c
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.action.DEFAULT_MSG_APP_INFO_LOGGING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3616
    const-string v2, "defaultMsgAppConfigInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3617
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsApplication - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$3;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    return-void
.end method
