.class final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->val$context:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
