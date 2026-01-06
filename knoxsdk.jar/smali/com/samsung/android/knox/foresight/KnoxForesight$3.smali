.class Lcom/samsung/android/knox/foresight/KnoxForesight$3;
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

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object p1, p1, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string v0, "Event intent comes"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "event"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$3;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->notifyCallbacks(Ljava/lang/String;)V

    return-void
.end method
