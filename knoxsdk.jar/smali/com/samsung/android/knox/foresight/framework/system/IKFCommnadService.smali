.class public interface abstract Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService$Stub;,
        Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.foresight.framework.system.IKFCommnadService"


# virtual methods
.method public abstract blacklist SendCommand(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
