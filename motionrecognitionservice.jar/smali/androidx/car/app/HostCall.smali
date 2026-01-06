.class public interface abstract Landroidx/car/app/HostCall;
.super Ljava/lang/Object;
.source "HostCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServiceT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dispatch(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServiceT;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
