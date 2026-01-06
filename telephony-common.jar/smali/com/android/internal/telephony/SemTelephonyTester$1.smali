.class Lcom/android/internal/telephony/SemTelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "SemTelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyTester;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyTester;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 236
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 237
    const-string v4, "phone"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 239
    iget-object v6, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive - action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", phoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 241
    const-string v6, "com.samsung.intent.action.SET_PREFERRED_NETWORK_TYPE_TEST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 242
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 243
    const-string v0, "networktype"

    const/16 v3, 0x1b

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 244
    const-string v3, "reason"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 245
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    .line 247
    iget-object v4, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", networkTypeBitMask: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    .line 250
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V

    return-void

    .line 252
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void

    .line 255
    :cond_2
    const-string v6, "com.samsung.intent.action.TELEPHONY_FEATURES_CHECK_TEST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->dump(I)V

    return-void

    .line 257
    :cond_3
    const-string v6, "com.samsung.intent.action.SEM_MMI_CODE_HELPER_TEST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->checkServiceClassToString(Landroid/content/Context;)V

    .line 259
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->checkForwardingTypeToString(Landroid/content/Context;)V

    .line 260
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->checkBarringTypeToString(Landroid/content/Context;)V

    return-void

    .line 261
    :cond_4
    const-string v6, "com.samsung.intent.action.CARRIER_ID_FROM_MCCMNC_TEST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 262
    const-string v3, "mccmnc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v0, v2}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierIdFromMccMnc(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 264
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccmnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", carrierIdFromMccMnc: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_5
    const-string v6, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_ENTER_TEST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v8, 0x3e8

    if-eqz v6, :cond_6

    .line 266
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 267
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 269
    :cond_6
    const-string v6, "com.samsung.intent.action.ALL_CELL_INFO_TEST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 271
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 274
    iget-object v3, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 277
    :cond_7
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    const-string v2, "No CellInfo"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 280
    :goto_1
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllCellInfo is fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    :cond_8
    const-string v0, "com.samsung.intent.action.HAS_CALL_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 284
    const-string v0, "count"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 285
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mhasCallTest(Lcom/android/internal/telephony/SemTelephonyTester;I)V

    return-void

    .line 287
    :cond_9
    const-string v0, "com.samsung.intent.action.SIMULATE_NETWORK_EMERGENCY_NUMBER_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 288
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 289
    const-string v0, "testNumber"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->simulateNetworkEmergencyNumber(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_a
    const-string v0, "com.samsung.intent.action.UT_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 294
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 296
    :cond_b
    const-string v0, "com.samsung.intent.action.DRX_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 297
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 298
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 300
    :cond_c
    const-string v0, "com.samsung.intent.action.CDMA_WAITING_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_d

    .line 301
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 302
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 304
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 305
    iput v10, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 306
    iput v10, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 307
    const-string v2, "123456789"

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 308
    const-string v2, "CDMA test"

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 310
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v7, v1, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 313
    :cond_d
    const-string v0, "com.samsung.intent.action.SRVCC_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 315
    const-string v0, "state"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 317
    iget-object v2, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    new-instance v3, Landroid/os/AsyncResult;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {v3, v7, v0, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v0, 0x1f

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 319
    :cond_e
    const-string v0, "com.samsung.intent.action.CALL_QUALITY_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 320
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 321
    :cond_f
    const-string v0, "networkType"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 323
    iget-object v2, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v2, v4, :cond_14

    if-eqz v7, :cond_14

    if-eqz v0, :cond_14

    .line 324
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_10
    if-ge v5, v2, :cond_14

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 328
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 329
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 330
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 331
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsCallListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    new-instance v8, Landroid/telephony/CallQuality;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v19}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/ImsCall$Listener;->onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V

    .line 332
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsCallListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V

    return-void

    .line 337
    :cond_11
    const-string v0, "com.samsung.intent.action.SUPP_SERVICE_NOTIFICATION_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 338
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 339
    :cond_12
    const-string v0, "notificationType"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 340
    const-string v0, "code"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 341
    const-string v0, "number"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 343
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_14

    if-eqz v7, :cond_14

    .line 344
    new-instance v11, Landroid/telephony/ims/ImsSuppServiceNotification;

    const-string v0, "123"

    const-string v2, "456"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-direct/range {v11 .. v17}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 346
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suppServiceInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_13
    if-ge v5, v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 350
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 352
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsCallListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, v2, v11}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    :cond_14
    :goto_2
    return-void

    .line 357
    :cond_15
    const-string v0, "com.samsung.intent.action.REQUEST_SATELLITE_ENABLED_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 358
    const-string v0, "isEnabled"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    const-string v3, "isEmergencyMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 361
    iget-object v3, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/satellite/SatelliteManager;

    .line 362
    new-instance v4, Landroid/telephony/satellite/EnableRequestAttributes$Builder;

    invoke-direct {v4, v0}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;-><init>(Z)V

    invoke-virtual {v4, v2}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->setEmergencyMode(Z)Landroid/telephony/satellite/EnableRequestAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->build()Landroid/telephony/satellite/EnableRequestAttributes;

    move-result-object v0

    .line 363
    new-instance v2, Lcom/android/internal/telephony/SemTelephonyTester$1$1;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/SemTelephonyTester$1$1;-><init>(Lcom/android/internal/telephony/SemTelephonyTester$1;)V

    .line 369
    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/satellite/SatelliteManager;->requestEnabled(Landroid/telephony/satellite/EnableRequestAttributes;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    .line 370
    :cond_16
    const-string v0, "com.samsung.intent.action.REQUEST_SATELLITE_ALIGNED_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 371
    const-string v0, "isAligned"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteManager;

    .line 374
    invoke-virtual {v1, v0}, Landroid/telephony/satellite/SatelliteManager;->setDeviceAlignedWithSatellite(Z)V

    return-void

    .line 375
    :cond_17
    const-string v0, "com.samsung.intent.action.REQUEST_SATELLITE_PROVISION_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 376
    const-string v0, "isProvision"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 377
    iget-object v1, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->getProvisionStatusAndSetProvision(Z)V

    return-void

    .line 379
    :cond_18
    iget-object v0, v1, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    return-void
.end method
