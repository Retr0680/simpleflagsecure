.class public interface abstract Lcom/android/server/notification/GroupHelper$Callback;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Callback"
.end annotation


# virtual methods
.method public abstract addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V
.end method

.method public abstract removeAppProvidedSummary(Ljava/lang/String;)V
.end method

.method public abstract removeAppProvidedSummaryOnClassification(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
.end method

.method public abstract removeAutoGroup(Ljava/lang/String;)V
.end method

.method public abstract removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeNotificationFromCanceledGroup(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract sendAppProvidedSummaryDeleteIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V
.end method
