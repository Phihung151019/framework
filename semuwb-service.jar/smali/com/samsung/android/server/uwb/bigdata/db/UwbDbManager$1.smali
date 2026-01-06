.class Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager$1;
.super Ljava/util/TimerTask;
.source "UwbDbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->initializeWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager$1;->this$0:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager$1;->this$0:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->-$$Nest$mcleanUpDatabase(Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;J)V

    .line 105
    return-void
.end method
