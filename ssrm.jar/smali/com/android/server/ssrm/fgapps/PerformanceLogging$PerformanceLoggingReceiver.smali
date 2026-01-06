.class Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;
.super Lcom/android/server/ssrm/common/intent/performancelogging/APerformanceLoggingER;
.source "PerformanceLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/PerformanceLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformanceLoggingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/PerformanceLogging;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/PerformanceLogging;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/PerformanceLogging;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;->this$0:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/performancelogging/APerformanceLoggingER;-><init>()V

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

    .line 138
    check-cast p1, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;

    .line 141
    if-nez p1, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;->getPerformanceLogging()I

    move-result v0

    .line 145
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;->this$0:Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->-$$Nest$mexecute(Lcom/android/server/ssrm/fgapps/PerformanceLogging;I)V

    .line 146
    return-void
.end method
