.class public interface abstract Lorg/codeaurora/internal/IDepersoResCallback;
.super Ljava/lang/Object;
.source "IDepersoResCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/IDepersoResCallback$Stub;,
        Lorg/codeaurora/internal/IDepersoResCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.internal.IDepersoResCallback"


# virtual methods
.method public abstract blacklist onDepersoResult(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
