package com.umutamal.sirat_i_nur;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RemoteViews;
import es.antonborri.home_widget.HomeWidgetProvider;

public class AyahWidgetProvider extends HomeWidgetProvider {

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, SharedPreferences widgetData) {
        for (int appWidgetId : appWidgetIds) {
            RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.widget_ayah);

            String header = widgetData.getString("ayah_header", "Daily Verse");
            String arabic = widgetData.getString("ayah_arabic", "");
            String translation = widgetData.getString("ayah_translation", "");
            String reference = widgetData.getString("ayah_reference", "");

            views.setTextViewText(R.id.tv_ayah_header, header);
            views.setTextViewText(R.id.tv_ayah_arabic, arabic);
            views.setTextViewText(R.id.tv_ayah_translation, translation);
            views.setTextViewText(R.id.tv_ayah_reference, reference);

            appWidgetManager.updateAppWidget(appWidgetId, views);
        }
    }
}
