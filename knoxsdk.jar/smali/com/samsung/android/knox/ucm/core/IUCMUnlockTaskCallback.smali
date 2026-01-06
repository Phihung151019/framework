.class public interface abstract Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback$Stub;,
        Lcom/samsung/android/knox/ucm/core/IUCMUnlockTaskCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ucm.core.IUCMUnlockTaskCallback"


# virtual methods
.method public abstract greylist postAuthentication()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
