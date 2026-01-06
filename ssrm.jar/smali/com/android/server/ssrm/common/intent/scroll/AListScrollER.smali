.class public abstract Lcom/android/server/ssrm/common/intent/scroll/AListScrollER;
.super Ljava/lang/Object;
.source "AListScrollER.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/ssrm/common/IEReceiver<",
        "Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .locals 1

    .line 15
    const-class v0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    .line 10
    check-cast p1, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/common/intent/scroll/AListScrollER;->onEventOccurred(Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V

    return-void
.end method

.method public abstract onEventOccurred(Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V
.end method
