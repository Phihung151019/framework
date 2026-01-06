.class Lcom/android/internal/telephony/SemGsmCdmaPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VendorBroadcastReceiver - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    .line 358
    const-string v0, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    const-string p1, "request_status"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 360
    const-string v0, "changed_config"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_6

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-ne p2, p1, :cond_6

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getUrlFromDeviceConfig(Z)V

    return-void

    .line 369
    :cond_0
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 371
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget v0, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v3, "CarrierFeature_RIL_Disable2gAsDefault"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v1, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mset2GDefaultOff(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v0, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 377
    const-string p1, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    const-string v0, "com.samsung.carrier.extra.CARRIER_GROUP_CHANGED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget v1, v1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    const-string v3, "com.samsung.carrier.extra.CARRIER_CANONICAL_ID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 381
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mCarrierId:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/SemGsmCdmaPhone;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " newCarrierId:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curGroup:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmCarrierGroup(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newGroup:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/SemGsmCdmaPhone;)I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fputmCarrierId(Lcom/android/internal/telephony/SemGsmCdmaPhone;I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmVendorConfigurationTracker(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->notifyCarrierChanged(Ljava/lang/String;)V

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mnotifyCarrierChangedForModemConfig(Lcom/android/internal/telephony/SemGsmCdmaPhone;Landroid/content/Intent;)V

    .line 390
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmCarrierGroup(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fputmCarrierGroup(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    .line 395
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    const/16 p2, 0x24d

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mloadSatellitePolicy(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    return-void

    .line 405
    :cond_4
    const-string v0, "com.samsung.android.mobiledoctor.DIAGTOOLEX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 406
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    const/16 p1, 0x247

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 410
    :cond_5
    const-string v0, "com.samsung.intent.action.IMEI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 411
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v0, "slot"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 412
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SEM_ACTION_IMEI_STATE_CHANGED slot: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    iget v0, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    .line 413
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->queryImei()V

    :cond_6
    return-void
.end method
