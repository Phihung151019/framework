.class public Landroidx/camera/extensions/impl/InitializerImpl;
.super Ljava/lang/Object;
.source "InitializerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;,
        Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;
    }
.end annotation


# static fields
.field public static final ERROR_INITIALIZE_VERSION_INCOMPATIBLE:I = 0x1

.field public static final ERROR_UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static deinit(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "callback"    # Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 73
    invoke-static {p0, p1}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->deinit(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;Ljava/util/concurrent/Executor;)V

    .line 74
    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->init(Ljava/lang/String;Landroid/content/Context;Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;Ljava/util/concurrent/Executor;)V

    .line 60
    return-void
.end method
