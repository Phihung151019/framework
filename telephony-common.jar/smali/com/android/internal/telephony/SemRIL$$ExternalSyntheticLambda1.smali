.class public final synthetic Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->$r8$lambda$SOLgjUwgwDfzZ-uPZbnOOQqgMDg(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method
