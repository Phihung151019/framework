.class final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
