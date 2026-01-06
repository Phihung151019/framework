.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/FeatureConnector$ManagerFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createManager(Landroid/content/Context;I)Lcom/android/ims/FeatureUpdates;
    .locals 1

    .line 0
    new-instance v0, Lcom/android/ims/SecImsManager;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/SecImsManager;-><init>(Landroid/content/Context;I)V

    check-cast v0, Lcom/android/ims/ImsManager;

    return-object v0
.end method
