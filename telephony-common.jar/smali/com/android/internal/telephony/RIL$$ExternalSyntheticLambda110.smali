.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioModemProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$0:Lcom/android/internal/telephony/RadioModemProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-boolean p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$2:Z

    iput-boolean p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$3:Z

    iput-boolean p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$4:Z

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$0:Lcom/android/internal/telephony/RadioModemProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$2:Z

    iget-boolean v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$3:Z

    iget-boolean p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;->f$4:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$AI9EXhXsCmv27UdfvPKL6_RbuEQ(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;ZZZ)V

    return-void
.end method
