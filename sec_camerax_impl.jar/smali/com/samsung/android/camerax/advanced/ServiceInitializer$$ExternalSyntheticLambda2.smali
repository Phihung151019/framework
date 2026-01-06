.class public final synthetic Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;->onSuccess()V

    return-void
.end method
