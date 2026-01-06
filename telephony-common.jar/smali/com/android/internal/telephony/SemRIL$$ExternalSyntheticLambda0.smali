.class public final synthetic Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/android/internal/telephony/SehRadioServiceProxy;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->$r8$lambda$yYg-PSz6als3igzdB85AiIjCYYA(Lcom/android/internal/telephony/SehRadioServiceProxy;)V

    return-void
.end method
