.class public final Landroidx/car/app/connection/CarConnection;
.super Ljava/lang/Object;
.source "CarConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/connection/CarConnection$ConnectionType;
    }
.end annotation


# static fields
.field public static final ACTION_CAR_CONNECTION_UPDATED:Ljava/lang/String; = "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

.field public static final CAR_CONNECTION_STATE:Ljava/lang/String; = "CarConnectionState"

.field public static final CONNECTION_TYPE_NATIVE:I = 0x1

.field public static final CONNECTION_TYPE_NOT_CONNECTED:I = 0x0

.field public static final CONNECTION_TYPE_PROJECTION:I = 0x2


# instance fields
.field private final mConnectionTypeLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Landroidx/car/app/utils/CommonUtils;->isAutomotiveOS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroidx/car/app/connection/AutomotiveCarConnectionTypeLiveData;

    invoke-direct {v0}, Landroidx/car/app/connection/AutomotiveCarConnectionTypeLiveData;-><init>()V

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-direct {v0, p1}, Landroidx/car/app/connection/CarConnectionTypeLiveData;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroidx/car/app/connection/CarConnection;->mConnectionTypeLiveData:Landroidx/lifecycle/LiveData;

    .line 94
    return-void
.end method


# virtual methods
.method public getType()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/car/app/connection/CarConnection;->mConnectionTypeLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
