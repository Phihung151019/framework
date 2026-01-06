.class Lcom/sec/android/sdhmssdk/SdhmsSDK$1;
.super Ljava/lang/Object;
.source "SdhmsSDK.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sdhmssdk/SdhmsSDK;


# direct methods
.method constructor <init>(Lcom/sec/android/sdhmssdk/SdhmsSDK;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/sdhmssdk/SdhmsSDK;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK$1;->this$0:Lcom/sec/android/sdhmssdk/SdhmsSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK$1;->this$0:Lcom/sec/android/sdhmssdk/SdhmsSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->-$$Nest$fputmService(Lcom/sec/android/sdhmssdk/SdhmsSDK;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    .line 55
    return-void
.end method
