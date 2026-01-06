.class public final synthetic Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:[I


# direct methods
.method public synthetic constructor blacklist <init>([I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda3;->f$0:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda3;->f$0:[I

    check-cast p1, Landroid/telephony/UiccSlotMapping;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->$r8$lambda$5hFVAQnX0LhQTx8JVTXh4NAOpIk([ILandroid/telephony/UiccSlotMapping;)V

    return-void
.end method
