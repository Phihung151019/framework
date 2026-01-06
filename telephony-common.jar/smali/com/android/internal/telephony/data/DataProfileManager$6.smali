.class Lcom/android/internal/telephony/data/DataProfileManager$6;
.super Landroid/content/BroadcastReceiver;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$q5VURB4i5yW57HrgGsBlB2nexOI(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 1

    .line 2382
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 2381
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2339
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x1

    .line 2342
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.getAction() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    .line 2344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string v3, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1

    :sswitch_2
    const-string v3, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2421
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const-string p1, "Unexpected intent"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    return-void

    .line 2389
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string p2, "HKG"

    const-string v0, "TPE"

    const-string v2, "CHN"

    filled-new-array {v2, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2391
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    instance-of p1, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p1, :cond_3

    .line 2392
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const-string p2, "CSC_CONNECTION_RESET_DONE : updateCurrentCarrierInProvider"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    .line 2393
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 2396
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SKT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2397
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateApnForLteRoaming()Z

    move-result p1

    .line 2398
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSC_CONNECTION_RESET_DONE : updateApn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 2400
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mupdateDataProfiles(Lcom/android/internal/telephony/data/DataProfileManager;Z)V

    return-void

    .line 2408
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isKttSim()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2409
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_4

    .line 2410
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-nez p1, :cond_5

    .line 2411
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetprevWifiConnected(Lcom/android/internal/telephony/data/DataProfileManager;)Z

    move-result p2

    if-eq p1, p2, :cond_5

    .line 2412
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const-string v0, "Init all DataProfiles Permanent fail due to WIFI off"

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    .line 2413
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$minitAllDataProfilesPermanentFail(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 2415
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fputprevWifiConnected(Lcom/android/internal/telephony/data/DataProfileManager;Z)V

    return-void

    .line 2347
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p1

    .line 2348
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->needPopupForCurrentCarrier()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->isPromptDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2349
    :cond_6
    const-string v0, "DataEnable"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2350
    const-string v3, "Roaming"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2351
    const-string v4, "slotId"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA_SELECTION_POPUP_PRESSED, phone="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 2353
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dataEnable = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", roaming = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2356
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 2358
    const-string v4, "popupPressed"

    if-eqz v3, :cond_8

    .line 2359
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-eq v3, p2, :cond_7

    .line 2360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 2363
    :cond_7
    invoke-virtual {p1, v1, v4}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    .line 2365
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {p2, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mneedToRunLteRoaming(Lcom/android/internal/telephony/data/DataProfileManager;I)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    .line 2367
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataProfileManager;->updateApnForLteRoaming()Z

    move-result p2

    .line 2368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_SELECTION_POPUP_PRESSED : updateApn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 2370
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mupdateDataProfiles(Lcom/android/internal/telephony/data/DataProfileManager;Z)V

    goto :goto_3

    .line 2375
    :cond_8
    invoke-virtual {p1, v1, v4}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    .line 2378
    :cond_9
    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWaitingForUserPress(Z)V

    .line 2379
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    if-eqz v0, :cond_a

    .line 2381
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$6;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmDataProfileManagerCallbacks(Lcom/android/internal/telephony/data/DataProfileManager;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataProfileManager$6$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataProfileManager$6$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66e0d955 -> :sswitch_2
        -0x147b62d9 -> :sswitch_1
        0x25d70220 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
