.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RIL;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RadioMessagingProxy;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$3:[B

.field public final synthetic blacklist f$4:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$0:Lcom/android/internal/telephony/RIL;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$1:Lcom/android/internal/telephony/RadioMessagingProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$2:Lcom/android/internal/telephony/RILRequest;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$3:[B

    iput-object p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$4:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$1:Lcom/android/internal/telephony/RadioMessagingProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$2:Lcom/android/internal/telephony/RILRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$3:[B

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;->f$4:Landroid/os/Message;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$jC9pXr-NdozZl31JzHuUZp7FWAM(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V

    return-void
.end method
