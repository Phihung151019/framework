.class public interface abstract Lcom/samsung/android/camerax/advanced/api/IExtensionService;
.super Ljava/lang/Object;
.source "IExtensionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/api/IExtensionService$Stub;,
        Lcom/samsung/android/camerax/advanced/api/IExtensionService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camerax.advanced.api.IExtensionService"


# virtual methods
.method public abstract initializeClient(Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;)Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
