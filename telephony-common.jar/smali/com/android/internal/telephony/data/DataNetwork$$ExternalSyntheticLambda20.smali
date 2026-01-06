.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;->f$0:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;->f$0:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->$r8$lambda$WjShc6OSDlkpGNNXdPdNouDQ_x8(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method
