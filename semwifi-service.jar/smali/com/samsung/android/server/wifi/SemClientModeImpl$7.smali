.class Lcom/samsung/android/server/wifi/SemClientModeImpl$7;
.super Ljava/util/TimerTask;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;->runFwLogTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$7;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$7;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mresetFwLogFolder(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$7;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmFwLogTimer(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
