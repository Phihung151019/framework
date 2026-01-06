.class Lcom/samsung/android/knox/foresight/KnoxForesight$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/foresight/KnoxForesight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "error"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "SUCCESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.foresight.COMMAND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->eventReceiver:Landroid/content/ComponentName;

    const-string v1, "eventReceiver"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.foresight"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object v1, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object p2, p2, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download failed. Reason : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$2;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    return-void
.end method
