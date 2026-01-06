.class public Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
.super Ljava/lang/Object;
.source "SamsungNfcAdapter.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "samsungnfc"

.field private static final TAG:Ljava/lang/String; = "SamsungNfcAdapter"

.field private static mAdapter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;


# instance fields
.field mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

.field final mContext:Landroid/content/Context;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "npe":Ljava/lang/NullPointerException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    .line 49
    nop

    .line 50
    return-void

    .line 48
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    .line 49
    throw v0
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 310
    const-string v0, "Nfc Samsung service dead - attempting to recover"

    const-string v1, "SamsungNfcAdapter"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object v0

    .line 312
    .local v0, "service":Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
    if-nez v0, :cond_0

    .line 313
    const-string v2, "Could not retrieve Nfc Samsung service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 316
    :cond_0
    sput-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 317
    return-void
.end method

.method public static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    monitor-enter v0

    .line 62
    if-eqz p0, :cond_3

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    .local v1, "appContext":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 68
    sget-object v2, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 69
    .local v2, "adapter":Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    if-nez v2, :cond_0

    .line 70
    new-instance v3, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-direct {v3, v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 71
    sget-object v3, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 74
    sget-object v3, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    if-nez v3, :cond_1

    .line 75
    const-string v3, "SamsungNfcAdapter"

    const-string v4, "Could not retrieve Samsung service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_1
    monitor-exit v0

    return-object v2

    .line 66
    .end local v2    # "adapter":Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application(using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v1    # "appContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 63
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
    .locals 2

    .line 320
    const-string v0, "samsungnfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 321
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 322
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private routeStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p1, "route"    # Ljava/lang/String;

    .line 500
    if-nez p1, :cond_0

    .line 501
    const-string p1, "null"

    .line 503
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "eSE1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "eSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "ESE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "DH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 509
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_0
    move v1, v5

    goto :goto_2

    .line 507
    :pswitch_1
    goto :goto_2

    .line 506
    :pswitch_2
    move v1, v2

    goto :goto_2

    .line 505
    :pswitch_3
    move v1, v3

    goto :goto_2

    .line 504
    :pswitch_4
    move v1, v4

    .line 503
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x884 -> :sswitch_6
        0x10d57 -> :sswitch_5
        0x140b7 -> :sswitch_4
        0x18577 -> :sswitch_3
        0x2f299a -> :sswitch_2
        0x33c587 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearNdefArea()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    const-string v1, "clearNdefArea"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->clearNdefArea()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to clearNdefArea"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copyUtilityFiles()V
    .locals 1

    .line 431
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->copyUtilityFiles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public disable()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    return v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enable()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    return v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableDisableSeTestMode(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "SE"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->enableDisableSeTestMode(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 227
    const/4 v1, 0x0

    return v1
.end method

.method public enableReaderOption(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 402
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    move-result v0

    return v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterState()I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    return v0

    .line 418
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultRoutingDestination()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->getDefaultRoutingDestination()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 268
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDiscoveryTech()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->getDiscoveryTech()[I

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->getLocation()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to get Location"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSavedDefaultRoutingDestination()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedDefaultRoutingDestination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->getSavedDefaultRoutingDestination()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to get saved default routing destination"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSecureElementSupportedTechnology()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->getSecureElementSupportedTechnology()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to get SecureElement Supported Technology"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAutoChangeEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->isAutoChangeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 305
    const/4 v1, 0x0

    return v1
.end method

.method public isOperationOngoing()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    const-string v1, "isOperationOngoing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->isOperationOngoing()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to isOperationOngoing"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isT4tEmulationSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    const-string v1, "isT4tEmulationSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->isT4tEmulationSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to isT4tEmulationSupported"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public overrideRoutingTable(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "technology"    # Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    if-eqz v0, :cond_1

    .line 447
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 448
    const-string v0, "SamsungNfcAdapter"

    const-string v1, "overrideRoutingTable is called with null parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0, p1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->recoverRoutingTable(Landroid/app/Activity;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {p0, p2}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->routeStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p3}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->routeStringToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->overrideRoutingTable(Landroid/app/Activity;II)V

    .line 454
    :cond_1
    :goto_0
    return-void
.end method

.method public readDataFromT4tArea(I)[B
    .locals 3
    .param p1, "fileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readDataFromT4tArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->readDataFromT4tArea(I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to readDataFromT4tArea"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public recoverRoutingTable(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 463
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/CardEmulation;->recoverRoutingTable(Landroid/app/Activity;)V

    .line 466
    :cond_0
    return-void
.end method

.method public registerLocalConfiguration(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Z
    .locals 3
    .param p1, "configuration"    # Lcom/samsung/android/nfc/adapter/LocalConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLocalConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    iget-object v1, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->registerLocalTechAndRoutingTable(Ljava/lang/String;Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to register LocalTech and RoutingTable"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAutoChangeStatus(Z)Z
    .locals 2
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->setAutoChangeStatus(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 287
    const/4 v1, 0x0

    return v1
.end method

.method public setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "emptyAid"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "technology"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 250
    const/4 v1, 0x0

    return v1
.end method

.method public setFeliCaLockState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileDirectory"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 336
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->setFeliCaLockState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    nop

    .line 526
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to set Location"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWirelessChargeEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 206
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->setWirelessChargeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public startCoverAuth()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 93
    .local v0, "iBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v1, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->startCoverAuth(Landroid/os/IBinder;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungNfcAdapter"

    const-string v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 97
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startLedCover()[B
    .locals 4

    .line 149
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 150
    .local v0, "iBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v1, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->startLedCover(Landroid/os/IBinder;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 151
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 153
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 154
    .local v1, "bytes":[B
    return-object v1
.end method

.method public stopCoverAuth()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->stopCoverAuth()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungNfcAdapter"

    const-string v2, "Failed to stop authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 136
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopLedCover()Z
    .locals 2

    .line 188
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->stopLedCover()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 191
    const/4 v1, 0x0

    return v1
.end method

.method public transceiveAuthData([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->transceiveAuthData([B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungNfcAdapter"

    const-string v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 117
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public transceiveDataWithLedCover([B)[B
    .locals 4
    .param p1, "data"    # [B

    .line 170
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->transceiveLedCover([B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 173
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 174
    .local v1, "bytes":[B
    return-object v1
.end method

.method public unregisterLocalConfiguration()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterLocalConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    iget-object v1, p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->unregisterLocalTechAndRoutingTable(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to unregister LocalTech and RoutingTable"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeDataToT4tArea(I[B)I
    .locals 3
    .param p1, "fileId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    :try_start_0
    const-string v0, "SamsungNfcAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDataToT4tArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;->writeDataToT4tArea(I[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to writeDataToT4tArea"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
