.class Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiRroChecker;->warnIfRroListContainsUnauthorizedItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$toastCount:[I

.field final synthetic val$warnString:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiRroChecker;Ljava/lang/StringBuilder;[ILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->val$warnString:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->val$toastCount:[I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->val$handler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiRroChecker;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->val$warnString:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->val$toastCount:[I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget v3, v0, v1

    .line 21
    .line 22
    sub-int/2addr v3, v2

    .line 23
    aput v3, v0, v1

    .line 24
    .line 25
    if-lez v3, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiRroChecker$1;->val$handler:Landroid/os/Handler;

    .line 28
    .line 29
    const-wide/16 v1, 0xbb8

    .line 30
    .line 31
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
