.class Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;
.super Landroid/os/Handler;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    sget-object p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    return-void
.end method
