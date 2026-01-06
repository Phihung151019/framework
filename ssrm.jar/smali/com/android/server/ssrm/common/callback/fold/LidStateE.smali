.class public Lcom/android/server/ssrm/common/callback/fold/LidStateE;
.super Ljava/lang/Object;
.source "LidStateE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# static fields
.field public static final SEM_LID_STATE_CLOSED:I = 0x1

.field public static final SEM_LID_STATE_OPEN:I = 0x0

.field public static final SEM_LID_STATE_UNKNOWN:I = -0x1


# instance fields
.field private lidState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "lidState"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->lidState:I

    .line 15
    return-void
.end method


# virtual methods
.method public isClose()Z
    .locals 2

    .line 18
    iget v0, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->lidState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
