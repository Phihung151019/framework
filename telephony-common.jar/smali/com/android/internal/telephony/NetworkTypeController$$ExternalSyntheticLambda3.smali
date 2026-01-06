.class public final synthetic Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:[I

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>([ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;->f$0:[I

    iput-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;->f$0:[I

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->$r8$lambda$LawktNsVak8LEaJYdpKdPWWRSwI([ILjava/util/List;I)V

    return-void
.end method
