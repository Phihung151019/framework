.class final Landroidx/car/app/connection/CarConnectionTypeLiveData;
.super Landroidx/lifecycle/LiveData;
.source "CarConnectionTypeLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;,
        Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;,
        Landroidx/car/app/connection/CarConnectionTypeLiveData$Api33Impl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final CAR_CONNECTION_AUTHORITY:Ljava/lang/String; = "androidx.car.app.connection"

.field private static final PROJECTION_HOST_URI:Landroid/net/Uri;

.field private static final QUERY_TOKEN:I = 0x2a


# instance fields
.field private final mBroadcastReceiver:Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "androidx.car.app.connection"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->PROJECTION_HOST_URI:Landroid/net/Uri;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionQueryHandler;-><init>(Landroidx/car/app/connection/CarConnectionTypeLiveData;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 61
    new-instance v0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;

    invoke-direct {v0, p0}, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;-><init>(Landroidx/car/app/connection/CarConnectionTypeLiveData;)V

    iput-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mBroadcastReceiver:Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/car/app/connection/CarConnectionTypeLiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p1}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/car/app/connection/CarConnectionTypeLiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p1}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/car/app/connection/CarConnectionTypeLiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p1}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/car/app/connection/CarConnectionTypeLiveData;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/car/app/connection/CarConnectionTypeLiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p1}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    nop

    .line 70
    iget-object v1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mBroadcastReceiver:Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;

    invoke-static {v1, v2, v0}, Landroidx/car/app/connection/CarConnectionTypeLiveData$Api33Impl;->registerExportedReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    invoke-virtual {p0}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->queryForState()V

    .line 76
    return-void
.end method

.method public onInactive()V
    .locals 2

    .line 80
    iget-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mBroadcastReceiver:Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iget-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 82
    return-void
.end method

.method queryForState()V
    .locals 8

    .line 85
    iget-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Landroidx/car/app/connection/CarConnectionTypeLiveData;->PROJECTION_HOST_URI:Landroid/net/Uri;

    const-string v1, "CarConnectionState"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
