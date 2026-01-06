.class Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;
.super Lcom/android/server/ssrm/common/intent/gesture/AGestureDetectER;
.source "GestureDetectPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureDetectReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/gesture/AGestureDetectER;-><init>()V

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

    .line 179
    check-cast p1, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;)V
    .locals 1
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fputgestureDetectEvent(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$mexecute(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V

    .line 186
    return-void
.end method
