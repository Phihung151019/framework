.class Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field protected final mContinuityConnectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/impl/common/ContinuityConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContinuityConnectionMapLock:Ljava/lang/Object;

.field protected final mContinuityUdpSocketManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityUdpSocketManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityUdpSocketManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;->mContinuityConnectionMapLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;->mContinuityUdpSocketManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityUdpSocketManager;

    .line 12
    .line 13
    new-instance p1, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityBaseConnectionManager;->mContinuityConnectionMap:Landroid/util/ArrayMap;

    .line 19
    .line 20
    return-void
.end method
