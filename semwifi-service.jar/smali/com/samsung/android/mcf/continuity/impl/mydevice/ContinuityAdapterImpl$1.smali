.class final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;
.super Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

.field final synthetic val$appId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

.field final synthetic val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;


# direct methods
.method constructor <init>(ILandroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$appId:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$iContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p1, "com.samsung.android.mcf.continuity.interfaces.IContinuitySyncCloudCallback"

    .line 15
    .line 16
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onCallback(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;

    .line 4
    .line 5
    iget v5, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$appId:I

    .line 6
    .line 7
    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;->val$iContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
