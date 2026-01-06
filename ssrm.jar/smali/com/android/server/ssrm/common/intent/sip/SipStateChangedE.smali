.class public Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;
.super Ljava/lang/Object;
.source "SipStateChangedE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mVisibleWindow:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "visibleWindow"    # Z

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;->mVisibleWindow:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isVisibleWindow()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;->mVisibleWindow:Z

    return v0
.end method
