.class Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;
.super Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumePackageChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 288
    check-cast p1, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 291
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->getResumedPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onFgAppChanged()V

    .line 296
    return-void
.end method
