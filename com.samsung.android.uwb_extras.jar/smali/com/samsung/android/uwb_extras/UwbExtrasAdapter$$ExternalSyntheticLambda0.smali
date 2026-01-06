.class public final synthetic Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->lambda$getUwbAdapter$0(Landroid/content/Context;)Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    move-result-object p1

    return-object p1
.end method
