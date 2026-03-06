.class public final synthetic Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->$r8$lambda$K83IKWLoiP7DqU6rpnWA1TZSGYo(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    return p1
.end method
