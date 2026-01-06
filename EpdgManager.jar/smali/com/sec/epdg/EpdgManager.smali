.class public Lcom/sec/epdg/EpdgManager;
.super Ljava/lang/Object;
.source "EpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgManager$ConnectionListener;,
        Lcom/sec/epdg/EpdgManager$EpdgListener;
    }
.end annotation


# static fields
.field private static final EPDGSERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.epdg.EpdgService"

.field private static final EPDGSERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.epdg"

.field public static final EPDG_CONNECTED:I = 0x3

.field public static final EPDG_CONNECTING:I = 0x1

.field public static final EPDG_DISCONNECTED:I = 0x0

.field public static final LTE_CONNECTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EPDG_Manager"


# instance fields
.field private mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

.field private final mContext:Landroid/content/Context;

.field private mEpdgConnection:Landroid/content/ServiceConnection;

.field private final mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

.field private final mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/EpdgManager$EpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/EpdgManager$EpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/sec/epdg/IEpdgManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/epdg/EpdgManager;Lcom/sec/epdg/IEpdgManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/epdg/EpdgManager$ConnectionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 25
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Lcom/sec/epdg/EpdgManager$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$1;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Lcom/sec/epdg/EpdgManager$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$2;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 288
    new-instance v1, Lcom/sec/epdg/EpdgManager$3;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$3;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    .line 213
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 215
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/sec/epdg/IEpdgManager;)V
    .locals 2
    .param p1, "service"    # Lcom/sec/epdg/IEpdgManager;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 25
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Lcom/sec/epdg/EpdgManager$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$1;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Lcom/sec/epdg/EpdgManager$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$2;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 288
    new-instance v1, Lcom/sec/epdg/EpdgManager$3;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$3;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    .line 202
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    .line 203
    if-eqz p1, :cond_0

    .line 204
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    goto :goto_0

    .line 206
    :cond_0
    const-string v0, "EPDG_Manager"

    const-string v1, "missing Epdg Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEpdgService()Lcom/sec/epdg/IEpdgManager;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/sec/epdg/EpdgManager$EpdgListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->addListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    .line 486
    return-void
.end method

.method public addListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;
    .param p2, "phoneId"    # I

    .line 489
    const-string v0, "Register ePDG Listener"

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz p1, :cond_4

    .line 494
    if-nez p2, :cond_1

    .line 495
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 500
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v0, "ePDG Listener (PhoneID 0) : Already added"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 509
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const-string v0, "ePDG Listener (PhoneID 1) : Already added"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    if-nez p2, :cond_3

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    goto :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_1
    goto :goto_2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 491
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkEpdgExtraFeature(ILjava/lang/String;)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->checkEpdgExtraFeature(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    const/4 v1, 0x0

    return v1
.end method

.method public connect(Ljava/lang/String;)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->connectBySim(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public connectBySim(Ljava/lang/String;I)I
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1, p2}, Lcom/sec/epdg/IEpdgManager;->connectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    const/4 v1, -0x1

    return v1
.end method

.method public connectService()V
    .locals 4

    .line 251
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getEpdgService()Lcom/sec/epdg/IEpdgManager;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectService() on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, "epdgIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg"

    const-string v2, "com.sec.epdg.EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 256
    .end local v0    # "epdgIntent":Landroid/content/Intent;
    goto :goto_0

    .line 257
    :cond_0
    const-string v0, "EpdgService is already connected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->disconnectBySim(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disconnectBySim(Ljava/lang/String;I)I
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1, p2}, Lcom/sec/epdg/IEpdgManager;->disconnectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    const/4 v1, -0x1

    return v1
.end method

.method public disconnectService()V
    .locals 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectService() on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getEpdgService()Lcom/sec/epdg/IEpdgManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    const-string v0, "disconnectService() : unbindService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 279
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    if-eqz v0, :cond_3

    .line 280
    const-string v0, "disconnectService() : mConnListener.onDisconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    invoke-interface {v0}, Lcom/sec/epdg/EpdgManager$ConnectionListener;->onDisconnected()V

    goto :goto_0

    .line 284
    :cond_2
    const-string v0, "EpdgService is already disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    :goto_0
    return-void
.end method

.method public enableTestRilAdapter(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->enableTestRilAdapterBySim(ZI)I

    move-result v0

    return v0
.end method

.method public enableTestRilAdapterBySim(ZI)I
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->enableTestRilAdapterBySim(ZI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const/4 v1, -0x1

    return v1
.end method

.method public getCurrentImsPdnStatus()I
    .locals 1

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgManager;->getCurrentImsPdnStatusBySim(I)I

    move-result v0

    return v0
.end method

.method public getCurrentImsPdnStatusBySim(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->getCurrentImsPdnStatusBySim(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    const/4 v1, 0x0

    return v1
.end method

.method public isDuringHandoverForIMS()Z
    .locals 1

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgManager;->isDuringHandoverForIMSBySim(I)Z

    move-result v0

    return v0
.end method

.method public isDuringHandoverForIMSBySim(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->isDuringHandoverForIMSBySim(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    const/4 v1, 0x0

    return v1
.end method

.method public isPossibleW2LHOAfterCallEnd()Z
    .locals 1

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v0

    return v0
.end method

.method public isPossibleW2LHOAfterCallEndBySim(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const/4 v1, 0x0

    return v1
.end method

.method public removeListener(Lcom/sec/epdg/EpdgManager$EpdgListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->removeListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    .line 527
    return-void
.end method

.method public removeListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;
    .param p2, "phoneId"    # I

    .line 530
    const-string v0, "Unregister ePDG Listener"

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-eqz p1, :cond_2

    .line 534
    if-nez p2, :cond_0

    .line 535
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    if-nez p2, :cond_1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_1
    goto :goto_2

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 532
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendEventToStateMachine(II)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "event"    # I

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/epdg/EpdgManager;->sendEventToStateMachineBySim(III)I

    move-result v0

    return v0
.end method

.method public sendEventToStateMachineBySim(III)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "phoneId"    # I

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/sec/epdg/IEpdgManager;->sendEventToStateMachineBySim(IILandroid/os/IBinder;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    const/4 v1, -0x1

    return v1
.end method

.method public setEmergencyQualifiedNetwork(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmergencyQualifiedNetwork: phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->setEmergencyQualifiedNetwork(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setEpdgNotAvailableDuringEmergencyCall(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->setEpdgNotAvailableDuringEmergencyCall(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    const/4 v1, 0x0

    return v1
.end method

.method public setReleaseCallBeforeHO(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "setReleaseCall"    # Z

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->setReleaseCallBeforeHO(IZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    const/4 v1, 0x0

    return v1
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/app/PendingIntent;)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/epdg/EpdgManager;->startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I

    move-result v0

    return v0
.end method

.method public startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "phoneId"    # I

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "networkType":I
    .end local p2    # "feature":Ljava/lang/String;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "phoneId":I
    .local v1, "networkType":I
    .local v2, "feature":Ljava/lang/String;
    .local v4, "intent":Landroid/app/PendingIntent;
    .local v5, "phoneId":I
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager;->startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 351
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "networkType":I
    .end local v2    # "feature":Ljava/lang/String;
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "phoneId":I
    .restart local p1    # "networkType":I
    .restart local p2    # "feature":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/app/PendingIntent;
    .restart local p4    # "phoneId":I
    :catch_1
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 352
    .end local p2    # "feature":Ljava/lang/String;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "phoneId":I
    .restart local v1    # "networkType":I
    .restart local v2    # "feature":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    .restart local v5    # "phoneId":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    const/4 p2, -0x1

    return p2
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/app/PendingIntent;)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/epdg/EpdgManager;->startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "phoneId"    # I

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "networkType":I
    .end local p2    # "feature":Ljava/lang/String;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "phoneId":I
    .local v1, "networkType":I
    .local v2, "feature":Ljava/lang/String;
    .local v4, "intent":Landroid/app/PendingIntent;
    .local v5, "phoneId":I
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager;->startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 338
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "networkType":I
    .end local v2    # "feature":Ljava/lang/String;
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "phoneId":I
    .restart local p1    # "networkType":I
    .restart local p2    # "feature":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/app/PendingIntent;
    .restart local p4    # "phoneId":I
    :catch_1
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 339
    .end local p2    # "feature":Ljava/lang/String;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "phoneId":I
    .restart local v1    # "networkType":I
    .restart local v2    # "feature":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    .restart local v5    # "phoneId":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const/4 p2, -0x1

    return p2
.end method

.method public startService(Landroid/content/Intent;)V
    .locals 3
    .param p1, "epdgIntent"    # Landroid/content/Intent;

    .line 227
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getEpdgService()Lcom/sec/epdg/IEpdgManager;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startservice() on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    .line 232
    :cond_0
    const-string v0, "com.sec.epdg"

    const-string v1, "com.sec.epdg.EpdgService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 235
    :cond_1
    const-string v0, "EpdgService is already connected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 240
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopservice() on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, "epdgIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg"

    const-string v2, "com.sec.epdg.EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 245
    .end local v0    # "epdgIntent":Landroid/content/Intent;
    goto :goto_0

    .line 246
    :cond_0
    const-string v0, "context null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void
.end method

.method public triggerHOAfterReleaseCall(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->triggerHOAfterReleaseCall(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    const/4 v1, 0x0

    return v1
.end method
